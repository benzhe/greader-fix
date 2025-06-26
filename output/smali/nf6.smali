.class public final Lnf6;
.super Lde6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde6<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lee6;


# instance fields
.field public final a:Lod6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnf6$a;

    invoke-direct {v0}, Lnf6$a;-><init>()V

    sput-object v0, Lnf6;->b:Lee6;

    return-void
.end method

.method public constructor <init>(Lod6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lde6;-><init>()V

    .line 2
    iput-object p1, p0, Lnf6;->a:Lod6;

    return-void
.end method


# virtual methods
.method public a(Leg6;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Leg6;->Q()Lfg6;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Leg6;->E()V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Leg6;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Leg6;->w()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-virtual {p1}, Leg6;->I()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    new-instance v0, Lze6;

    invoke-direct {v0}, Lze6;-><init>()V

    .line 9
    invoke-virtual {p1}, Leg6;->b()V

    .line 10
    :goto_0
    invoke-virtual {p1}, Leg6;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p1}, Leg6;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lnf6;->a(Leg6;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lze6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p1}, Leg6;->g()V

    return-object v0

    .line 13
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p1}, Leg6;->a()V

    .line 15
    :goto_1
    invoke-virtual {p1}, Leg6;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0, p1}, Lnf6;->a(Leg6;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p1}, Leg6;->f()V

    return-object v0
.end method

.method public b(Lgg6;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lgg6;->m()Lgg6;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lnf6;->a:Lod6;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ldg6;

    invoke-direct {v2, v1}, Ldg6;-><init>(Ljava/lang/reflect/Type;)V

    .line 5
    invoke-virtual {v0, v2}, Lod6;->d(Ldg6;)Lde6;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lnf6;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lgg6;->c()Lgg6;

    .line 8
    invoke-virtual {p1}, Lgg6;->g()Lgg6;

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0, p1, p2}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    return-void
.end method
