.class public Lc68$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc68$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final j:[I


# instance fields
.field public final e:Ly68;

.field public final f:I

.field public final g:I

.field public final h:Lj68;

.field public final i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lc68$j;->j:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method public constructor <init>(Ly68;IILj68;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc68$j;->e:Ly68;

    .line 3
    iput p2, p0, Lc68$j;->f:I

    .line 4
    iput p3, p0, Lc68$j;->g:I

    .line 5
    iput-object p4, p0, Lc68$j;->h:Lj68;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lc68$j;->i:I

    return-void
.end method

.method public constructor <init>(Ly68;IILj68;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lc68$j;->e:Ly68;

    .line 9
    iput p2, p0, Lc68$j;->f:I

    .line 10
    iput p3, p0, Lc68$j;->g:I

    .line 11
    iput-object p4, p0, Lc68$j;->h:Lj68;

    .line 12
    iput p5, p0, Lc68$j;->i:I

    return-void
.end method

.method public constructor <init>(Ly68;IILj68;ILc68$a;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lc68$j;->e:Ly68;

    .line 15
    iput p2, p0, Lc68$j;->f:I

    .line 16
    iput p3, p0, Lc68$j;->g:I

    .line 17
    iput-object p4, p0, Lc68$j;->h:Lj68;

    .line 18
    iput p5, p0, Lc68$j;->i:I

    return-void
.end method


# virtual methods
.method public a(Le68;J)J
    .locals 0

    return-wide p2
.end method

.method public b()Lc68$j;
    .locals 8

    .line 1
    iget v0, p0, Lc68$j;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lc68$j;

    iget-object v3, p0, Lc68$j;->e:Ly68;

    iget v4, p0, Lc68$j;->f:I

    iget v5, p0, Lc68$j;->g:I

    iget-object v6, p0, Lc68$j;->h:Lj68;

    const/4 v7, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lc68$j;-><init>(Ly68;IILj68;I)V

    return-object v0
.end method

.method public c(I)Lc68$j;
    .locals 7

    .line 1
    new-instance v6, Lc68$j;

    iget-object v1, p0, Lc68$j;->e:Ly68;

    iget v2, p0, Lc68$j;->f:I

    iget v3, p0, Lc68$j;->g:I

    iget-object v4, p0, Lc68$j;->h:Lj68;

    iget v0, p0, Lc68$j;->i:I

    add-int v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc68$j;-><init>(Ly68;IILj68;I)V

    return-object v6
.end method

.method public i(Le68;Ljava/lang/StringBuilder;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lc68$j;->e:Ly68;

    invoke-virtual {p1, v0}, Le68;->b(Ly68;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lc68$j;->a(Le68;J)J

    move-result-wide v2

    .line 3
    iget-object p1, p1, Le68;->c:Lg68;

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string v0, "9223372036854775808"

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lc68$j;->g:I

    const-string v6, " cannot be printed as the value "

    const-string v7, "Field "

    if-gt v4, v5, :cond_9

    .line 6
    invoke-virtual {p1, v0}, Lg68;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    cmp-long v10, v2, v4

    if-ltz v10, :cond_4

    .line 7
    iget-object v4, p0, Lc68$j;->h:Lj68;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget v4, p0, Lc68$j;->f:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_7

    sget-object v5, Lc68$j;->j:[I

    aget v4, v5, v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_7

    .line 9
    iget-char v2, p1, Lg68;->b:C

    .line 10
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_3
    iget-char v2, p1, Lg68;->b:C

    .line 12
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_4
    iget-object v4, p0, Lc68$j;->h:Lj68;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v9, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    if-eq v4, v8, :cond_6

    goto :goto_1

    .line 14
    :cond_5
    new-instance p1, Ll48;

    invoke-static {v7}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lc68$j;->e:Ly68;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " cannot be negative according to the SignStyle"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_6
    iget-char v2, p1, Lg68;->c:C

    .line 16
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    :cond_7
    :goto_1
    iget v2, p0, Lc68$j;->f:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_8

    .line 18
    iget-char v2, p1, Lg68;->a:C

    .line 19
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 20
    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v9

    .line 21
    :cond_9
    new-instance p1, Ll48;

    invoke-static {v7}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lc68$j;->e:Ly68;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " exceeds the maximum print width of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lc68$j;->g:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lc68$j;->f:I

    const-string v1, ")"

    const-string v2, "Value("

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget v3, p0, Lc68$j;->g:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lc68$j;->h:Lj68;

    sget-object v4, Lj68;->e:Lj68;

    if-ne v3, v4, :cond_0

    .line 2
    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lc68$j;->e:Ly68;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget v3, p0, Lc68$j;->g:I

    const-string v4, ","

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lc68$j;->h:Lj68;

    sget-object v3, Lj68;->h:Lj68;

    if-ne v0, v3, :cond_1

    .line 4
    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lc68$j;->e:Ly68;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lc68$j;->f:I

    invoke-static {v0, v2, v1}, Ljo;->q(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lc68$j;->e:Ly68;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lc68$j;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lc68$j;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc68$j;->h:Lj68;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
