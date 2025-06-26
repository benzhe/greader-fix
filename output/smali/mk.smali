.class public Lmk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmk$d;
    }
.end annotation


# static fields
.field public static a:Lpg;

.field public static b:Lpg;

.field public static c:Lpg;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lmk$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lmk$a;-><init>(II)V

    sput-object v0, Lmk;->a:Lpg;

    .line 2
    new-instance v0, Lmk$b;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lmk$b;-><init>(II)V

    sput-object v0, Lmk;->b:Lpg;

    .line 3
    new-instance v0, Lmk$c;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lmk$c;-><init>(II)V

    sput-object v0, Lmk;->c:Lpg;

    return-void
.end method
