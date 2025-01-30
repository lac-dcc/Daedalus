#include "../include/reports.h"

ReportWriter::ReportWriter(const std::filesystem::path &filename)
    : file(filename, std::ios::app) {
  if (!file.is_open()) {
    throw std::runtime_error("Unable to open file: " + filename.string());
  }
}

ReportWriter::~ReportWriter() {
  if (file.is_open()) {
    file.close();
  }
}

void ReportWriter::writeLine(const std::string &line) {
  if (file.is_open()) {
    file << line << std::endl;
  }
}
