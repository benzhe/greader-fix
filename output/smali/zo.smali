.class public Lzo;
.super Ljp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lap;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljp;-><init>(Lap;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lap;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ljp;-><init>(Lap;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljp;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
