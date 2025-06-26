.class public final Lbu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lbu5;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Liu5;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lau5;->e:Lau5;

    .line 2
    new-instance v1, Lln5;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v1, Lbu5;->f:Lln5;

    return-void
.end method

.method public constructor <init>(Liu5;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lbu5;->l(Liu5;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Not a document key path: %s"

    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lbu5;->e:Liu5;

    return-void
.end method

.method public static k(Ljava/lang/String;)Lbu5;
    .locals 5

    .line 1
    invoke-static {p0}, Liu5;->N(Ljava/lang/String;)Liu5;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lvt5;->I()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    .line 3
    invoke-virtual {p0, v3}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "projects"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "databases"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "documents"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string v2, "Tried to parse an invalid key: %s"

    .line 6
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 7
    invoke-virtual {p0, v0}, Lvt5;->K(I)Lvt5;

    move-result-object p0

    check-cast p0, Liu5;

    .line 8
    new-instance v0, Lbu5;

    invoke-direct {v0, p0}, Lbu5;-><init>(Liu5;)V

    return-object v0
.end method

.method public static l(Liu5;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvt5;->I()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lbu5;

    invoke-virtual {p0, p1}, Lbu5;->i(Lbu5;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lbu5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lbu5;

    .line 3
    iget-object v0, p0, Lbu5;->e:Liu5;

    iget-object p1, p1, Lbu5;->e:Liu5;

    invoke-virtual {v0, p1}, Lvt5;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lbu5;->e:Liu5;

    invoke-virtual {v0}, Lvt5;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Lbu5;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lbu5;->e:Liu5;

    iget-object p1, p1, Lbu5;->e:Liu5;

    invoke-virtual {v0, p1}, Lvt5;->t(Lvt5;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbu5;->e:Liu5;

    .line 2
    invoke-virtual {v0}, Liu5;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
