.class public Ldy6;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# instance fields
.field public final e:[Ljava/lang/String;

.field public f:[Ljava/lang/Object;

.field public g:I

.field public final h:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ldy6;->g:I

    .line 3
    iput-object p1, p0, Ldy6;->e:[Ljava/lang/String;

    .line 4
    array-length p1, p1

    iput p1, p0, Ldy6;->h:I

    mul-int/lit8 p1, p1, 0x10

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ldy6;->f:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)V
    .locals 5

    .line 1
    array-length v0, p1

    iget v1, p0, Ldy6;->h:I

    if-ne v0, v1, :cond_2

    .line 2
    iget v0, p0, Ldy6;->g:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ldy6;->g:I

    mul-int v0, v0, v1

    add-int/2addr v1, v0

    .line 3
    iget-object v2, p0, Ldy6;->f:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    if-le v1, v3, :cond_1

    .line 4
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    if-ge v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ldy6;->f:[Ljava/lang/Object;

    .line 6
    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    :cond_1
    iget-object v1, p0, Ldy6;->f:[Ljava/lang/Object;

    iget v2, p0, Ldy6;->h:I

    invoke-static {p1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "columnNames.length = "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldy6;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", columnValues.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Ldy6;->h:I

    if-ge p1, v0, :cond_2

    .line 2
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ltz v1, :cond_1

    .line 3
    iget v2, p0, Ldy6;->g:I

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Ldy6;->f:[Ljava/lang/Object;

    mul-int v1, v1, v0

    add-int/2addr v1, p1

    aget-object p1, v2, v1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v0, "After last row."

    invoke-direct {p1, v0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v0, "Before first row."

    invoke-direct {p1, v0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Requested column: "

    const-string v2, ", # of columns: "

    invoke-static {v1, p1, v2}, Ljo;->A(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Ldy6;->h:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ldy6;->f:[Ljava/lang/Object;

    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 4

    if-ltz p1, :cond_6

    .line 1
    iget v0, p0, Ldy6;->g:I

    if-le p1, v0, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 3
    :try_start_0
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v1, p1, -0x1

    .line 4
    iput v1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 5
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 7
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnCount()I

    move-result p1

    .line 8
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 10
    invoke-virtual {p0, v1}, Ldy6;->b(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 11
    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v2, v1}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    goto :goto_0

    .line 13
    :cond_2
    instance-of v3, v2, [B

    if-eqz v3, :cond_3

    .line 14
    check-cast v2, [B

    .line 15
    iget v3, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v2, v3, v1}, Landroid/database/CursorWindow;->putBlob([BII)Z

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p0, v1}, Ldy6;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 17
    iget v3, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v2, v3, v1}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    goto :goto_0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    .line 21
    throw p1

    .line 22
    :catch_0
    :goto_3
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    :cond_6
    :goto_4
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ldy6;->b(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    :goto_0
    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ldy6;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Ldy6;->g:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ldy6;->b(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ldy6;->b(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :goto_0
    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ldy6;->b(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ldy6;->b(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ldy6;->b(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    :goto_0
    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldy6;->b(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isNull(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldy6;->b(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
