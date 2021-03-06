//
//  AddToDoItemViewController.swift
//  Swift To-do List
//
//  Created by Paul Yu on 13/6/14.
//  Copyright (c) 2014 Paul Yu. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {
    var toDoItem : ToDoItem = ToDoItem()
    @IBOutlet var textField : UITextField
    @IBOutlet var doneButton : UIBarButtonItem
/*
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
*/
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        if sender as? NSObject != doneButton {
            return
        }
        if textField.text.utf16count > 0
        {
             toDoItem.itemName = textField.text
            //toDoItem.completed = false //default
        }
        // Pass the selected object to the new view controller.
    }
    

}
