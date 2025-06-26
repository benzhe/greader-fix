.class public final La70;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:rendering:timeout_ms"

    const-wide/32 v1, 0xea60

    .line 1
    invoke-static {v0, v1, v2}, Le60;->b(Ljava/lang/String;J)Le60;

    move-result-object v0

    sput-object v0, La70;->a:Le60;

    return-void
.end method
