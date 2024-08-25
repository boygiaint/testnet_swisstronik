const hre = require("hardhat");

async function main() {
  const contract = await hre.ethers.deployContract("OrderlyNetwork");   

  await contract.waitForDeployment();

  console.log(`The contract deployed to ${contract.target}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});