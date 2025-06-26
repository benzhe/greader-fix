.class public final Lc68$q;
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
    name = "q"
.end annotation


# instance fields
.field public final e:C

.field public final f:I


# direct methods
.method public constructor <init>(CI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-char p1, p0, Lc68$q;->e:C

    .line 3
    iput p2, p0, Lc68$q;->f:I

    return-void
.end method


# virtual methods
.method public i(Le68;Ljava/lang/StringBuilder;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Le68;->b:Ljava/util/Locale;

    .line 2
    sget-object v3, Le78;->k:Ljava/util/concurrent/ConcurrentMap;

    const-string v3, "locale"

    .line 3
    invoke-static {v2, v3}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v3, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 6
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    .line 7
    sget-object v4, Lm48;->k:Lm48;

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    const-wide/16 v5, 0x7

    .line 8
    rem-long/2addr v3, v5

    long-to-int v4, v3

    .line 9
    sget-object v3, Lm48;->l:[Lm48;

    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x6

    rem-int/lit8 v4, v4, 0x7

    aget-object v3, v3, v4

    .line 10
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    .line 11
    invoke-static {v3, v2}, Le78;->a(Lm48;I)Le78;

    move-result-object v2

    .line 12
    sget-object v3, Lj68;->h:Lj68;

    .line 13
    iget-char v4, v0, Lc68$q;->e:C

    const/16 v5, 0x57

    const/4 v6, 0x2

    if-eq v4, v5, :cond_6

    const/16 v5, 0x59

    if-eq v4, v5, :cond_3

    const/16 v5, 0x63

    if-eq v4, v5, :cond_2

    const/16 v5, 0x65

    if-eq v4, v5, :cond_1

    const/16 v5, 0x77

    if-eq v4, v5, :cond_0

    const/4 v2, 0x0

    goto :goto_3

    .line 14
    :cond_0
    new-instance v4, Lc68$j;

    .line 15
    iget-object v2, v2, Le78;->i:Ly68;

    .line 16
    iget v5, v0, Lc68$q;->f:I

    invoke-direct {v4, v2, v5, v6, v3}, Lc68$j;-><init>(Ly68;IILj68;)V

    goto :goto_2

    .line 17
    :cond_1
    new-instance v4, Lc68$j;

    .line 18
    iget-object v2, v2, Le78;->g:Ly68;

    .line 19
    iget v5, v0, Lc68$q;->f:I

    invoke-direct {v4, v2, v5, v6, v3}, Lc68$j;-><init>(Ly68;IILj68;)V

    goto :goto_2

    .line 20
    :cond_2
    new-instance v4, Lc68$j;

    .line 21
    iget-object v2, v2, Le78;->g:Ly68;

    .line 22
    iget v5, v0, Lc68$q;->f:I

    invoke-direct {v4, v2, v5, v6, v3}, Lc68$j;-><init>(Ly68;IILj68;)V

    goto :goto_2

    .line 23
    :cond_3
    iget v9, v0, Lc68$q;->f:I

    if-ne v9, v6, :cond_4

    .line 24
    new-instance v3, Lc68$m;

    .line 25
    iget-object v11, v2, Le78;->j:Ly68;

    const/4 v12, 0x2

    const/4 v13, 0x2

    const/4 v14, 0x0

    .line 26
    sget-object v15, Lc68$m;->m:Lp48;

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lc68$m;-><init>(Ly68;IIILe58;)V

    :goto_0
    move-object v2, v3

    goto :goto_3

    .line 27
    :cond_4
    new-instance v3, Lc68$j;

    .line 28
    iget-object v8, v2, Le78;->j:Ly68;

    const/16 v10, 0x13

    const/4 v2, 0x4

    if-ge v9, v2, :cond_5

    .line 29
    sget-object v2, Lj68;->e:Lj68;

    goto :goto_1

    :cond_5
    sget-object v2, Lj68;->i:Lj68;

    :goto_1
    move-object v11, v2

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lc68$j;-><init>(Ly68;IILj68;ILc68$a;)V

    goto :goto_0

    .line 30
    :cond_6
    new-instance v4, Lc68$j;

    .line 31
    iget-object v2, v2, Le78;->h:Ly68;

    const/4 v5, 0x1

    .line 32
    invoke-direct {v4, v2, v5, v6, v3}, Lc68$j;-><init>(Ly68;IILj68;)V

    :goto_2
    move-object v2, v4

    :goto_3
    move-object/from16 v3, p2

    .line 33
    invoke-virtual {v2, v1, v3}, Lc68$j;->i(Le68;Ljava/lang/StringBuilder;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x1e

    const-string v1, "Localized("

    .line 1
    invoke-static {v0, v1}, Ljo;->w(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-char v1, p0, Lc68$q;->e:C

    const-string v2, ","

    const/16 v3, 0x59

    if-ne v1, v3, :cond_3

    .line 3
    iget v1, p0, Lc68$q;->f:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "WeekBasedYear"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v1, "WeekBasedYear,"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc68$q;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Lc68$q;->f:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    sget-object v1, Lj68;->e:Lj68;

    goto :goto_0

    :cond_2
    sget-object v1, Lj68;->i:Lj68;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/16 v3, 0x63

    if-eq v1, v3, :cond_6

    const/16 v3, 0x65

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x77

    if-ne v1, v3, :cond_5

    const-string v1, "WeekOfWeekBasedYear"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v3, 0x57

    if-ne v1, v3, :cond_7

    const-string v1, "WeekOfMonth"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    :goto_1
    const-string v1, "DayOfWeek"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_7
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Lc68$q;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
