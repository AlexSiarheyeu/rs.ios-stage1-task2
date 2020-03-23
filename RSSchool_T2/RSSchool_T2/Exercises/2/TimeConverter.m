#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    
    
    NSInteger HoursInInt = [hours integerValue];
    NSInteger MinutesInInt = [minutes integerValue];
    
        NSDictionary *dictionary = @{
        @"1" : @"one",           @"2" :  @"two",          @"3" : @"three",         @"4" : @"four",
        @"5" : @"five",          @"6" :  @"six",          @"7" : @"seven",         @"8" : @"eight",
        @"9" : @"nine",          @"10" : @"ten",          @"11" : @"eleven",       @"12" : @"twelve",
        
        @"22" : @"twenty two",   @"23" : @"twenty three", @"24" : @"twenty four",
        };
    
    if (MinutesInInt > 59)  {
        return @"";
    } else if (HoursInInt > 12) {
        return @"";
    }
   
    if (MinutesInInt == 0) {
        return [NSString stringWithFormat:@"%@ o' clock", [dictionary valueForKey:hours]];
        
    } else if (MinutesInInt == 15) {
        return [NSString stringWithFormat:@"quarter past %@", [dictionary valueForKey:hours]];
        
    } else if (MinutesInInt == 30) {
        return [NSString stringWithFormat:@"half past %@", [dictionary valueForKey:hours]];
    }
    
    NSString* zeroIgnore = minutes;
    
    if ([zeroIgnore hasPrefix: @"0"]) {
        return [NSString stringWithFormat:@"%@ minutes past %@", [dictionary valueForKey: [zeroIgnore substringFromIndex:1]],
                                                                 [dictionary valueForKey:hours]];
    }
    
     NSString *MinutesToNextHour = [NSString stringWithFormat:@"%ld", 60 - MinutesInInt];
     NSString *nextHour = [NSString stringWithFormat:@"%ld", 1 + HoursInInt];
    
     if (MinutesInInt == 45) {
        return [NSString stringWithFormat:@"quarter to %@",[dictionary valueForKey: nextHour]];
         
    } else {
        return [NSString stringWithFormat:@"%@ minutes to %@", [dictionary valueForKey: MinutesToNextHour],
                                                               [dictionary valueForKey:nextHour]];
    }
    }
@end

