.class public final Ltf6;
.super Lde6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lde6<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lod6;

.field public final b:Lde6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lod6;Lde6;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lod6;",
            "Lde6<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lde6;-><init>()V

    .line 2
    iput-object p1, p0, Ltf6;->a:Lod6;

    .line 3
    iput-object p2, p0, Ltf6;->b:Lde6;

    .line 4
    iput-object p3, p0, Ltf6;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a(Leg6;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg6;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltf6;->b:Lde6;

    invoke-virtual {v0, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lgg6;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg6;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltf6;->b:Lde6;

    .line 2
    iget-object v1, p0, Ltf6;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 3
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v2, p0, Ltf6;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_3

    .line 6
    iget-object v0, p0, Ltf6;->a:Lod6;

    .line 7
    new-instance v2, Ldg6;

    invoke-direct {v2, v1}, Ldg6;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    invoke-virtual {v0, v2}, Lod6;->d(Ldg6;)Lde6;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lpf6$a;

    if-nez v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Ltf6;->b:Lde6;

    instance-of v2, v1, Lpf6$a;

    if-nez v2, :cond_3

    move-object v0, v1

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {v0, p1, p2}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    return-void
.end method
