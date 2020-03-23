#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.day = [day intValue];
    components.month = [month intValue];
    components.year = [year intValue];
    
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    if ([components isValidDateInCalendar:gregorianCalendar]) {
    
    NSDate *date = [gregorianCalendar dateFromComponents:components];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"d MMMM, EEEE"];
    formatter.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"ru_BY" ];
    
        return [formatter stringFromDate:date];
    //  NSString *fromDateToString = [formatter stringFromDate:date];

    }else{
    return @"Такого дня не существует";
}
}
@end
