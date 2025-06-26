.class public Li96;
.super Lj96;
.source "SourceFile"


# instance fields
.field public c:Lh96;

.field public d:Lb96;


# direct methods
.method public constructor <init>(Lf96;Lh96;Lb96;Ljava/util/Map;Li96$a;)V
    .locals 0

    .line 1
    sget-object p5, Lcom/google/firebase/inappmessaging/model/MessageType;->IMAGE_ONLY:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-direct {p0, p1, p5, p4}, Lj96;-><init>(Lf96;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 2
    iput-object p2, p0, Li96;->c:Lh96;

    .line 3
    iput-object p3, p0, Li96;->d:Lb96;

    return-void
.end method


# virtual methods
.method public a()Lh96;
    .locals 1

    .line 1
    iget-object v0, p0, Li96;->c:Lh96;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Li96;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Li96;

    .line 3
    invoke-virtual {p0}, Li96;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Li96;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Li96;->d:Lb96;

    if-nez v1, :cond_3

    iget-object v3, p1, Li96;->d:Lb96;

    if-nez v3, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    iget-object v3, p1, Li96;->d:Lb96;

    invoke-virtual {v1, v3}, Lb96;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    return v2

    .line 5
    :cond_5
    iget-object v1, p0, Li96;->c:Lh96;

    iget-object p1, p1, Li96;->c:Lh96;

    invoke-virtual {v1, p1}, Lh96;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Li96;->d:Lb96;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb96;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Li96;->c:Lh96;

    invoke-virtual {v1}, Lh96;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
