using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace Seb4Vision.CSportView.Data.Migrations
{
    public partial class Initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "TeamMatchStats",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Corners = table.Column<int>(nullable: false),
                    Fouls = table.Column<int>(nullable: false),
                    Goals = table.Column<int>(nullable: false),
                    Injuries = table.Column<int>(nullable: false),
                    Offsides = table.Column<int>(nullable: false),
                    PassAccuracy = table.Column<decimal>(nullable: false),
                    Possession = table.Column<decimal>(nullable: false),
                    RedCards = table.Column<int>(nullable: false),
                    ShotAccuracy = table.Column<decimal>(nullable: false),
                    Shots = table.Column<int>(nullable: false),
                    ShotsOnTarget = table.Column<int>(nullable: false),
                    Tackles = table.Column<int>(nullable: false),
                    TeamId = table.Column<int>(nullable: false),
                    YellowCards = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TeamMatchStats", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "MatchStats",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TeamAStatsId = table.Column<int>(nullable: true),
                    TeamBStatsId = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MatchStats", x => x.Id);
                    table.ForeignKey(
                        name: "FK_MatchStats_TeamMatchStats_TeamAStatsId",
                        column: x => x.TeamAStatsId,
                        principalTable: "TeamMatchStats",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_MatchStats_TeamMatchStats_TeamBStatsId",
                        column: x => x.TeamBStatsId,
                        principalTable: "TeamMatchStats",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_MatchStats_TeamAStatsId",
                table: "MatchStats",
                column: "TeamAStatsId");

            migrationBuilder.CreateIndex(
                name: "IX_MatchStats_TeamBStatsId",
                table: "MatchStats",
                column: "TeamBStatsId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "MatchStats");

            migrationBuilder.DropTable(
                name: "TeamMatchStats");
        }
    }
}
