.class public Lvy6;
.super Luy6;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 2
    new-instance v0, Laz6;

    invoke-direct {v0}, Laz6;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v1, v0}, Luy6;-><init>(Ljava/io/File;Ljava/io/File;Laz6;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Laz6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Luy6;-><init>(Ljava/io/File;Ljava/io/File;Laz6;)V

    return-void
.end method
