.class public final Lcr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lyr1;",
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
    new-instance v0, Lyr1;

    sget-object v1, Lgp3;->n:Lgp3;

    sget-object v2, Lgp3;->o:Lgp3;

    sget-object v3, Lgp3;->L:Lgp3;

    invoke-direct {v0, v1, v2, v3}, Lyr1;-><init>(Lgp3;Lgp3;Lgp3;)V

    return-object v0
.end method
