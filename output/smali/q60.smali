.class public final Lq60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:log:verbose_enabled"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Le60;->c(Ljava/lang/String;Z)Le60;

    move-result-object v0

    sput-object v0, Lq60;->a:Le60;

    return-void
.end method
