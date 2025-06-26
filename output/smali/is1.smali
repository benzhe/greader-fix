.class public final Lis1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lqs1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lqs1;

    sget-object v1, Lap2;->f:Lap2;

    sget-object v2, Lap2;->i:Lap2;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lqs1;-><init>(Ljava/lang/String;Lap2;Lap2;)V

    return-object v0
.end method
