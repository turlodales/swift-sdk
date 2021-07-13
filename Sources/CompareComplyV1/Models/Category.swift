/**
 * (C) Copyright IBM Corp. 2018, 2020.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

/**
 Information defining an element's subject matter.
 */
public struct Category: Codable, Equatable {

    /**
     The category of the associated element.
     */
    public enum Label: String {
        case amendments = "Amendments"
        case assetUse = "Asset Use"
        case assignments = "Assignments"
        case audits = "Audits"
        case businessContinuity = "Business Continuity"
        case communication = "Communication"
        case confidentiality = "Confidentiality"
        case deliverables = "Deliverables"
        case delivery = "Delivery"
        case disputeResolution = "Dispute Resolution"
        case forceMajeure = "Force Majeure"
        case indemnification = "Indemnification"
        case insurance = "Insurance"
        case intellectualProperty = "Intellectual Property"
        case liability = "Liability"
        case orderOfPrecedence = "Order of Precedence"
        case paymentTermsBilling = "Payment Terms & Billing"
        case pricingTaxes = "Pricing & Taxes"
        case privacy = "Privacy"
        case responsibilities = "Responsibilities"
        case safetyAndSecurity = "Safety and Security"
        case scopeOfWork = "Scope of Work"
        case subcontracts = "Subcontracts"
        case termTermination = "Term & Termination"
        case warranties = "Warranties"
    }

    /**
     The type of modification of the feedback entry in the updated labels response.
     */
    public enum Modification: String {
        case added = "added"
        case unchanged = "unchanged"
        case removed = "removed"
    }

    /**
     The category of the associated element.
     */
    public var label: String?

    /**
     Hashed values that you can send to IBM to provide feedback or receive support.
     */
    public var provenanceIDs: [String]?

    /**
     The type of modification of the feedback entry in the updated labels response.
     */
    public var modification: String?

    // Map each property name to the key that shall be used for encoding/decoding.
    private enum CodingKeys: String, CodingKey {
        case label = "label"
        case provenanceIDs = "provenance_ids"
        case modification = "modification"
    }

    /**
      Initialize a `Category` with member variables.

      - parameter label: The category of the associated element.
      - parameter provenanceIDs: Hashed values that you can send to IBM to provide feedback or receive support.
      - parameter modification: The type of modification of the feedback entry in the updated labels response.

      - returns: An initialized `Category`.
     */
    public init(
        label: String? = nil,
        provenanceIDs: [String]? = nil,
        modification: String? = nil
    )
    {
        self.label = label
        self.provenanceIDs = provenanceIDs
        self.modification = modification
    }

}