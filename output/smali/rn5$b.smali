.class public Lrn5$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrn5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrn5$b$a;,
        Lrn5$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TB;TC;>;"
        }
    .end annotation
.end field

.field public final c:Ljn5$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljn5$a$a<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field public d:Lqn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqn5<",
            "TA;TC;>;"
        }
    .end annotation
.end field

.field public e:Lqn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqn5<",
            "TA;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Ljn5$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Ljn5$a$a<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrn5$b;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lrn5$b;->b:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lrn5$b;->c:Ljn5$a$a;

    return-void
.end method

.method public static b(Ljava/util/List;Ljava/util/Map;Ljn5$a$a;Ljava/util/Comparator;)Lrn5;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Ljn5$a$a<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lrn5<",
            "TA;TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lon5$a;->f:Lon5$a;

    new-instance v1, Lrn5$b;

    invoke-direct {v1, p0, p1, p2}, Lrn5$b;-><init>(Ljava/util/List;Ljava/util/Map;Ljn5$a$a;)V

    .line 2
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    new-instance p1, Lrn5$b$a;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Lrn5$b$a;-><init>(I)V

    .line 4
    new-instance p2, Lrn5$b$a$a;

    invoke-direct {p2, p1}, Lrn5$b$a$a;-><init>(Lrn5$b$a;)V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 6
    :goto_0
    invoke-virtual {p2}, Lrn5$b$a$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p2}, Lrn5$b$a$a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrn5$b$b;

    .line 8
    iget v2, p1, Lrn5$b$b;->b:I

    sub-int/2addr p0, v2

    .line 9
    iget-boolean v3, p1, Lrn5$b$b;->a:Z

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v1, v0, v2, p0}, Lrn5$b;->c(Lon5$a;II)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1, v0, v2, p0}, Lrn5$b;->c(Lon5$a;II)V

    .line 12
    iget p1, p1, Lrn5$b$b;->b:I

    sub-int/2addr p0, p1

    .line 13
    sget-object v2, Lon5$a;->e:Lon5$a;

    invoke-virtual {v1, v2, p1, p0}, Lrn5$b;->c(Lon5$a;II)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Lrn5;

    .line 15
    iget-object p1, v1, Lrn5$b;->d:Lqn5;

    if-nez p1, :cond_2

    sget-object p1, Lnn5;->a:Lnn5;

    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lrn5;-><init>(Lon5;Ljava/util/Comparator;Lrn5$a;)V

    return-object p0
.end method


# virtual methods
.method public final a(II)Lon5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lon5<",
            "TA;TC;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lnn5;->a:Lnn5;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p0, Lrn5$b;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    new-instance p2, Lmn5;

    invoke-virtual {p0, p1}, Lrn5$b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1, v1}, Lmn5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)V

    return-object p2

    .line 4
    :cond_1
    div-int/lit8 p2, p2, 0x2

    add-int v0, p1, p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lrn5$b;->a(II)Lon5;

    move-result-object p1

    add-int/lit8 v1, v0, 0x1

    .line 6
    invoke-virtual {p0, v1, p2}, Lrn5$b;->a(II)Lon5;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lrn5$b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 8
    new-instance v1, Lmn5;

    invoke-virtual {p0, v0}, Lrn5$b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1, p2}, Lmn5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)V

    return-object v1
.end method

.method public final c(Lon5$a;II)V
    .locals 2

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 p2, p2, -0x1

    .line 1
    invoke-virtual {p0, v0, p2}, Lrn5$b;->a(II)Lon5;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lrn5$b;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 3
    sget-object v0, Lon5$a;->e:Lon5$a;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 4
    new-instance p1, Lpn5;

    invoke-virtual {p0, p3}, Lrn5$b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p3, v0, v1, p2}, Lpn5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lmn5;

    invoke-virtual {p0, p3}, Lrn5$b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p3, v0, v1, p2}, Lmn5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)V

    .line 6
    :goto_0
    iget-object p2, p0, Lrn5$b;->d:Lqn5;

    if-nez p2, :cond_1

    .line 7
    iput-object p1, p0, Lrn5$b;->d:Lqn5;

    .line 8
    iput-object p1, p0, Lrn5$b;->e:Lqn5;

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p0, Lrn5$b;->e:Lqn5;

    invoke-virtual {p2, p1}, Lqn5;->s(Lon5;)V

    .line 10
    iput-object p1, p0, Lrn5$b;->e:Lqn5;

    :goto_1
    return-void
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrn5$b;->b:Ljava/util/Map;

    iget-object v1, p0, Lrn5$b;->c:Ljn5$a$a;

    check-cast v1, Lin5;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget v1, Ljn5$a;->a:I

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
