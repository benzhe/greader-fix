.class public abstract Lo73;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo73;

.field public static final b:Lo73;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq73;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq73;-><init>(Ln73;)V

    sput-object v0, Lo73;->a:Lo73;

    .line 2
    new-instance v0, Lp73;

    invoke-direct {v0, v1}, Lp73;-><init>(Ln73;)V

    sput-object v0, Lo73;->b:Lo73;

    return-void
.end method

.method public constructor <init>(Ln73;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Object;J)V
.end method
