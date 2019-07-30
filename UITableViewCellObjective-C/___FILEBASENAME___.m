//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()


@end

@implementation ___FILEBASENAMEASIDENTIFIER___

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    NSString *classStr = NSStringFromClass(self);
    
    NSString *cellID = [NSString stringWithFormat:@"%@ID",classStr];
    UITableViewCell *baseCell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (baseCell == nil) {
        baseCell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        baseCell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
    return baseCell;
#pragma clang diagnostic pop
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor whiteColor];
        [self setUpLayout];
        //        [self hy_setAllSubviewsBorderRed];
    }
    return self;
}


- (void)setUpLayout{
    
}

@end
