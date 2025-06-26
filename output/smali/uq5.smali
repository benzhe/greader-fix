.class public Luq5;
.super Lzp5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luq5$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzp5;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzp5$a;)Lrr5;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lzp5$a;)Lts5;
    .locals 1

    .line 1
    new-instance p1, Lps5;

    invoke-direct {p1}, Lps5;-><init>()V

    .line 2
    new-instance v0, Lms5;

    invoke-direct {v0, p1}, Lms5;-><init>(Lps5;)V

    .line 3
    iput-object v0, p1, Lps5;->f:Lxs5;

    return-object p1
.end method
