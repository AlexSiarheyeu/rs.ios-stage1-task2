#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    
    NSArray *array = @[@"01",@"02", @"03", @"04",                @"05",@"06",@"07",@"08",@"09",@"10",@"11",@"12",@"13"];
    NSString *string = [[NSString alloc] initWithString:[array componentsJoinedByString:@""]];
    
    NSArray *array1 = @[@"30", @"31", @"32"];
    NSString *string1 = [[NSString alloc] initWithString:[array1 componentsJoinedByString:@""]];
   
 
    if ([minutes containsString:string]) {
        return (@" %@ o' clock", hours);
    }
    if ([minutes containsString:[array valueForKey:@"01"]]); {
        
        return (@"%@ past %@", minutes, hours);
    }
    if ([minutes containsString:[array1 valueForKey:@"31"]]); {
        return (@"%@ minutes to %@"), minutes, [hours intValue]+1;);
        
    }
    
    
        return @"Wrong format";
    
}
@end
