#ifndef REPORTS_H
#define REPORTS_H

#include <fstream>
#include <string>
#include <filesystem>

class ReportWriter {
public:
    ReportWriter(const std::filesystem::path& filename);
    ~ReportWriter();
    void writeLine(const std::string& line);
private:
    std::ofstream file;
};

#endif // REPORTS_H