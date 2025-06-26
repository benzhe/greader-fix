.class public final Lta4;
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

    new-instance v0, Lra4;

    invoke-direct {v0}, Lra4;-><init>()V

    sput-object v0, Lta4;->a:Ljava/util/Iterator;

    new-instance v0, Lsa4;

    invoke-direct {v0}, Lsa4;-><init>()V

    sput-object v0, Lta4;->b:Ljava/lang/Iterable;

    return-void
.end method
