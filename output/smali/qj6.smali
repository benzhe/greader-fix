.class public abstract Lqj6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqj6$c;,
        Lqj6$b;
    }
.end annotation


# static fields
.field public static final a:Lqj6;

.field public static final b:Lqj6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqj6$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqj6$b;-><init>(Lqj6$a;)V

    sput-object v0, Lqj6;->a:Lqj6;

    .line 2
    new-instance v0, Lqj6$c;

    invoke-direct {v0, v1}, Lqj6$c;-><init>(Lqj6$a;)V

    sput-object v0, Lqj6;->b:Lqj6;

    return-void
.end method

.method public constructor <init>(Lqj6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
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

.method public abstract c(Ljava/lang/Object;J)Ljava/util/List;
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
