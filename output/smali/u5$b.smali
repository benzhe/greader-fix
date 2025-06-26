.class public Lu5$b;
.super Ls5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lu5;Lt5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls5;-><init>()V

    .line 2
    new-instance p1, Ly5;

    invoke-direct {p1, p0, p2}, Ly5;-><init>(Ls5;Lt5;)V

    iput-object p1, p0, Ls5;->d:Ls5$a;

    return-void
.end method
