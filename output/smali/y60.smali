.class public final Ly60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:pan:experiment_id"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Le60;->d(Ljava/lang/String;Ljava/lang/String;)Le60;

    move-result-object v0

    sput-object v0, Ly60;->a:Le60;

    return-void
.end method
