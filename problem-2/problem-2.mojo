
fn checkRecord(attendance_record: String) -> Bool:
    var attendance_record_str: String = attendance_record

    var absent_count: Int = 0
    var late_count: Int = 0

    for i in range(len(attendance_record_str)):
        
        if attendance_record_str[i] == 'A':
            absent_count += 1
            late_count = 0
        elif attendance_record_str[i] == 'L':
            late_count += 1
        else:
            late_count = 0

        if late_count >= 3 or absent_count >= 2:
            return False
    return True


fn main():
    if checkRecord("PAALP"):
        print("The attendance record is acceptable.")
    else:
        print("The attendance record is not acceptable.")


