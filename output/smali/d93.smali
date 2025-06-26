.class public final Ld93;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc93;

    invoke-direct {v0}, Lc93;-><init>()V

    sput-object v0, Ld93;->a:Ljava/util/Iterator;

    .line 2
    new-instance v0, Lf93;

    invoke-direct {v0}, Lf93;-><init>()V

    sput-object v0, Ld93;->b:Ljava/lang/Iterable;

    return-void
.end method
