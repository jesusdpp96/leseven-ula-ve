import React from "react";

/**
 * Render a custom tab panel.
 *
 * @param {object} props - The properties for the tab panel
 * @return {JSX.Element} The custom tab panel element
 */
export default function CustomTabPanel(props) {
  const { children, value, index, ...other } = props;

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`simple-tabpanel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
      {value === index && (
        children?.length > 0 ? children.map(elem => elem) :
        { children }
      )}
    </div>
  );
}