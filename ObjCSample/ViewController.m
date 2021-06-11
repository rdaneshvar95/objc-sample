//
//  ViewController.m
//  ObjCSample
//
//  Created by Reza Daneshvar on 11/06/2021.
//

#import "ViewController.h"
#import "Movie.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray<Movie *> *movies;

@end

@implementation ViewController

NSString *cellId = @"cellId";

- (void)viewDidLoad {
    [super viewDidLoad];

    self.movies = NSMutableArray.new;

    Movie *movie1 = Movie.new;
    movie1.name = @"12 Angry Men";
    movie1.score = @99;
    [self.movies addObject: movie1];

    Movie *movie2 = Movie.new;
    movie2.name = @"Inception";
    movie2.score = @93;
    [self.movies addObject: movie2];

    self.title = @"Sample app";
    self.navigationController.navigationBar.prefersLargeTitles = YES;

    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellId];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.movies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];

    NSMutableString *text = NSMutableString.new;
    [text appendString:[self.movies[indexPath.row].score stringValue]];
    [text appendString:@" "];
    [text appendString:self.movies[indexPath.row].name];

    cell.textLabel.text = text;
    return cell;
}

@end
