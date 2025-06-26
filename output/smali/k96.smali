.class public Lk96;
.super Lj96;
.source "SourceFile"


# instance fields
.field public final c:Lp96;

.field public final d:Lp96;

.field public final e:Lh96;

.field public final f:Lb96;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lf96;Lp96;Lp96;Lh96;Lb96;Ljava/lang/String;Ljava/util/Map;Lk96$a;)V
    .locals 0

    .line 1
    sget-object p8, Lcom/google/firebase/inappmessaging/model/MessageType;->MODAL:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-direct {p0, p1, p8, p7}, Lj96;-><init>(Lf96;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 2
    iput-object p2, p0, Lk96;->c:Lp96;

    .line 3
    iput-object p3, p0, Lk96;->d:Lp96;

    .line 4
    iput-object p4, p0, Lk96;->e:Lh96;

    .line 5
    iput-object p5, p0, Lk96;->f:Lb96;

    .line 6
    iput-object p6, p0, Lk96;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lh96;
    .locals 1

    .line 1
    iget-object v0, p0, Lk96;->e:Lh96;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk96;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lk96;

    .line 3
    invoke-virtual {p0}, Lk96;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lk96;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lk96;->d:Lp96;

    if-nez v1, :cond_3

    iget-object v3, p1, Lk96;->d:Lp96;

    if-nez v3, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    iget-object v3, p1, Lk96;->d:Lp96;

    invoke-virtual {v1, v3}, Lp96;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    return v2

    .line 5
    :cond_5
    iget-object v1, p0, Lk96;->f:Lb96;

    if-nez v1, :cond_6

    iget-object v3, p1, Lk96;->f:Lb96;

    if-nez v3, :cond_7

    :cond_6
    if-eqz v1, :cond_8

    iget-object v3, p1, Lk96;->f:Lb96;

    invoke-virtual {v1, v3}, Lb96;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    return v2

    .line 6
    :cond_8
    iget-object v1, p0, Lk96;->e:Lh96;

    if-nez v1, :cond_9

    iget-object v3, p1, Lk96;->e:Lh96;

    if-nez v3, :cond_a

    :cond_9
    if-eqz v1, :cond_b

    iget-object v3, p1, Lk96;->e:Lh96;

    .line 7
    invoke-virtual {v1, v3}, Lh96;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    return v2

    .line 8
    :cond_b
    iget-object v1, p0, Lk96;->c:Lp96;

    iget-object v3, p1, Lk96;->c:Lp96;

    invoke-virtual {v1, v3}, Lp96;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 9
    :cond_c
    iget-object v1, p0, Lk96;->g:Ljava/lang/String;

    iget-object p1, p1, Lk96;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v0

    :cond_d
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lk96;->d:Lp96;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp96;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lk96;->f:Lb96;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lb96;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    iget-object v3, p0, Lk96;->e:Lh96;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lh96;->hashCode()I

    move-result v1

    .line 4
    :cond_2
    iget-object v3, p0, Lk96;->c:Lp96;

    invoke-virtual {v3}, Lp96;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lk96;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method
