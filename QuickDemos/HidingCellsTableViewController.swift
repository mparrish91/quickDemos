//
//  HidingCellsTableViewController.swift
//  QuickDemos
//
//  Created by parry on 4/23/16.
//  Copyright © 2016 provoq. All rights reserved.
//

import UIKit

class HidingCellsTableViewController: UITableViewController {

    @IBOutlet weak var maleCell: UITableViewCell!
    @IBOutlet weak var femaleCell: UITableViewCell!
    var femaleCellVisible: Bool?
    var maleCellVisible: Bool?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)

        femaleCellVisible = false
        maleCellVisible = false

        femaleCell.hidden = true
        maleCell.hidden = true

        maleCell.translatesAutoresizingMaskIntoConstraints = false
        maleCell.translatesAutoresizingMaskIntoConstraints = false

    }

    func showGenderCells() {
        femaleCellVisible = true
        maleCellVisible = true
        tableView.beginUpdates()
        tableView.endUpdates()
        femaleCell.hidden = false
        maleCell.hidden = false

        femaleCell.alpha = 0
        maleCell.alpha = 0

        UIView.animateWithDuration(0.25) { () -> Void in

            self.femaleCell.alpha = 1
            self.maleCell.alpha = 1
        }

    }

    func hideGenderCells() {
        femaleCellVisible = false
        maleCellVisible = false
        tableView.beginUpdates()
        tableView.endUpdates()

        UIView.animateWithDuration(0.25,
                                   animations: { () -> Void in

                                    self.femaleCell.alpha = 1
                                    self.maleCell.alpha = 1
            },
                                   completion:{ (finished) -> Void in

                                    self.femaleCell.hidden = true
                                    self.maleCell.hidden = true
            }
        )
    }


    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        if indexPath.row == 0{


        if femaleCellVisible == true && maleCellVisible == true {
            hideGenderCells()
            
        }else{
            showGenderCells()
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        }

    }







}
