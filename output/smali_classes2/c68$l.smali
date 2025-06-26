.class public final Lc68$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc68$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation


# instance fields
.field public final e:Lc68$e;

.field public final f:I

.field public final g:C


# direct methods
.method public constructor <init>(Lc68$e;IC)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc68$l;->e:Lc68$e;

    .line 3
    iput p2, p0, Lc68$l;->f:I

    .line 4
    iput-char p3, p0, Lc68$l;->g:C

    return-void
.end method


# virtual methods
.method public i(Le68;Ljava/lang/StringBuilder;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2
    iget-object v1, p0, Lc68$l;->e:Lc68$e;

    invoke-interface {v1, p1, p2}, Lc68$e;->i(Le68;Ljava/lang/StringBuilder;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v0

    .line 4
    iget v2, p0, Lc68$l;->f:I

    if-gt p1, v2, :cond_2

    .line 5
    :goto_0
    iget v2, p0, Lc68$l;->f:I

    sub-int/2addr v2, p1

    if-ge v1, v2, :cond_1

    .line 6
    iget-char v2, p0, Lc68$l;->g:C

    invoke-virtual {p2, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    new-instance p2, Ll48;

    const-string v0, "Cannot print as output of "

    const-string v1, " characters exceeds pad width of "

    invoke-static {v0, p1, v1}, Ljo;->A(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lc68$l;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Pad("

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc68$l;->e:Lc68$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc68$l;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lc68$l;->g:C

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const-string v1, ")"

    goto :goto_0

    :cond_0
    const-string v1, ",\'"

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lc68$l;->g:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
