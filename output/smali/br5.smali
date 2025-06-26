.class public Lbr5;
.super Luq5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Luq5;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzp5$a;)Lrr5;
    .locals 3

    .line 1
    iget-object v0, p0, Lzp5;->a:Lts5;

    .line 2
    check-cast v0, Lgt5;

    .line 3
    iget-object v0, v0, Lgt5;->g:Lct5;

    .line 4
    iget-object v0, v0, Lct5;->d:Ljs5;

    .line 5
    iget-object p1, p1, Lzp5$a;->b:Lex5;

    .line 6
    iget-object v1, p0, Lzp5;->b:Lfs5;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Ljs5$d;

    invoke-direct {v2, v0, p1, v1}, Ljs5$d;-><init>(Ljs5;Lex5;Lfs5;)V

    return-object v2
.end method

.method public b(Lzp5$a;)Lts5;
    .locals 7

    .line 1
    new-instance v4, Lur5;

    new-instance v0, Low5;

    .line 2
    iget-object v1, p1, Lzp5$a;->c:Laq5;

    .line 3
    iget-object v1, v1, Laq5;->a:Lwt5;

    .line 4
    invoke-direct {v0, v1}, Low5;-><init>(Lwt5;)V

    invoke-direct {v4, v0}, Lur5;-><init>(Low5;)V

    .line 5
    iget-object v0, p1, Lzp5$a;->f:Lap5;

    .line 6
    iget-wide v0, v0, Lap5;->d:J

    .line 7
    new-instance v5, Ljs5$a;

    const/16 v2, 0xa

    const/16 v3, 0x3e8

    invoke-direct {v5, v0, v1, v2, v3}, Ljs5$a;-><init>(JII)V

    .line 8
    new-instance v6, Lgt5;

    .line 9
    iget-object v1, p1, Lzp5$a;->a:Landroid/content/Context;

    .line 10
    iget-object p1, p1, Lzp5$a;->c:Laq5;

    .line 11
    iget-object v2, p1, Laq5;->b:Ljava/lang/String;

    .line 12
    iget-object v3, p1, Laq5;->a:Lwt5;

    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lgt5;-><init>(Landroid/content/Context;Ljava/lang/String;Lwt5;Lur5;Ljs5$a;)V

    return-object v6
.end method
