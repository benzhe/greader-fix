.class public final Lk78$a;
.super Lk78;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk78;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:La58;


# direct methods
.method public constructor <init>(La58;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk78;-><init>()V

    .line 2
    iput-object p1, p0, Lk78$a;->e:La58;

    return-void
.end method


# virtual methods
.method public a(Lo48;)La58;
    .locals 0

    .line 1
    iget-object p1, p0, Lk78$a;->e:La58;

    return-object p1
.end method

.method public b(Lq48;)Li78;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lq48;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq48;",
            ")",
            "Ljava/util/List<",
            "La58;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lk78$a;->e:La58;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo48;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk78$a;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, Lk78$a;->e:La58;

    check-cast p1, Lk78$a;

    iget-object p1, p1, Lk78$a;->e:La58;

    invoke-virtual {v0, p1}, La58;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    instance-of v1, p1, Lg78;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    check-cast p1, Lg78;

    .line 5
    invoke-virtual {p1}, Lg78;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lk78$a;->e:La58;

    sget-object v3, Lo48;->g:Lo48;

    invoke-virtual {p1, v3}, Lg78;->a(Lo48;)La58;

    move-result-object p1

    invoke-virtual {v1, p1}, La58;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public f(Lq48;La58;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lk78$a;->e:La58;

    invoke-virtual {p1, p2}, La58;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk78$a;->e:La58;

    .line 2
    iget v0, v0, La58;->f:I

    add-int/lit8 v1, v0, 0x1f

    xor-int/lit8 v1, v1, 0x1

    xor-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "FixedRules:"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk78$a;->e:La58;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
