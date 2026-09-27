from docx import Document
from docx.shared import Inches
from docx.enum.text import WD_PARAGRAPH_ALIGNMENT
from docx.oxml.ns import qn
from docx.oxml import OxmlElement

# Create a new Word document
doc = Document()
doc.add_heading('Bruno GQ600C Generator Refurbishment Report', 0)

# Section 1: Compliance and Standards
doc.add_heading('1. Compliance and Standards', level=1)
doc.add_paragraph(
    "The refurbishment process adhered to the following standards:", style='List Bullet'
)
doc.add_paragraph("- ISO 8528 for generator sets")
doc.add_paragraph("- IEC 60034 for rotating electrical machines")
doc.add_paragraph("- Manufacturer-specific guidelines for Bruno GQ600C")

# Section 2: Generator Specifications
doc.add_heading('2. Generator Specifications', level=1)
table = doc.add_table(rows=1, cols=2)
table.style = 'Table Grid'
hdr_cells = table.rows[0].cells
hdr_cells[0].text = 'Specification'
hdr_cells[1].text = 'Value'
specs = [
    ('Model', 'Bruno GQ600C'),
    ('Rated Power', '553 kVA'),
    ('Power Factor', '0.8'),
    ('Voltage', '400V'),
    ('Frequency', '50 Hz'),
    ('Phase', '3-Phase')
]
for spec, value in specs:
    row_cells = table.add_row().cells
    row_cells[0].text = spec
    row_cells[1].text = value

# Section 3: Control Panel Programming
doc.add_heading('3. Control Panel Programming', level=1)
doc.add_paragraph("Initial Condition:", style='List Bullet')
doc.add_paragraph("- Missing control module")
doc.add_paragraph("- Damaged wiring")
doc.add_paragraph("Programmed Parameters:", style='List Bullet')
doc.add_paragraph("- Phase ordering: L1, L2, L3")
doc.add_paragraph("- CT ratio: 1600/5")
doc.add_paragraph("- Voltage and frequency thresholds configured per IEC standards")

# Section 4: Engine Testing
doc.add_heading('4. Engine Testing', level=1)
doc.add_paragraph("Runtime Log:", style='List Bullet')
doc.add_paragraph("- Total runtime: 12 hours")
doc.add_paragraph("- Load testing at 75% and 100% capacity")
doc.add_paragraph("Alarm Analysis:", style='List Bullet')
doc.add_paragraph("- Overvoltage alarm resolved")
doc.add_paragraph("- Low oil pressure alarm cleared")
doc.add_paragraph("Corrective Actions:", style='List Bullet')
doc.add_paragraph("- Replaced control module")
doc.add_paragraph("- Rewired damaged circuits")
doc.add_paragraph("- Calibrated sensors and protection relays")

# Section 5: Conclusion
doc.add_heading('5. Conclusion', level=1)
doc.add_paragraph(
    "The Bruno GQ600C generator has been successfully refurbished and tested. All systems are operational and compliant with relevant standards. The generator is now ready for deployment in critical power applications."
)

# Save the document
doc.save("/mnt/data/Bruno_GQ600C_Refurbishment_Report.docx")
print("Refurbishment report generated successfully.")