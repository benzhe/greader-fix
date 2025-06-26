.class public Luf6$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luf6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lod6;Ldg6;)Lde6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lod6;",
            "Ldg6<",
            "TT;>;)",
            "Lde6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p2, p2, Ldg6;->a:Ljava/lang/Class;

    .line 2
    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    const-class p2, Ljava/util/Date;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ldg6;

    invoke-direct {v0, p2}, Ldg6;-><init>(Ljava/lang/reflect/Type;)V

    .line 6
    invoke-virtual {p1, v0}, Lod6;->d(Ldg6;)Lde6;

    move-result-object p1

    .line 7
    new-instance p2, Luf6$r$a;

    invoke-direct {p2, p0, p1}, Luf6$r$a;-><init>(Luf6$r;Lde6;)V

    return-object p2
.end method
