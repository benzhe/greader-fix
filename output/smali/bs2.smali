.class public final Lbs2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Landroid/content/SharedPreferences;

.field public final d:Lkd3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkd3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pcvmspf"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbs2;->c:Landroid/content/SharedPreferences;

    const-string v0, "pccache"

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-static {v0, v1}, Lc50;->A1(Ljava/io/File;Z)Ljava/io/File;

    iput-object v0, p0, Lbs2;->a:Ljava/io/File;

    const-string v0, "tmppccache"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lc50;->A1(Ljava/io/File;Z)Ljava/io/File;

    iput-object p1, p0, Lbs2;->b:Ljava/io/File;

    .line 6
    iput-object p2, p0, Lbs2;->d:Lkd3;

    return-void
.end method


# virtual methods
.method public final a(Lmd3;Ltp2;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lmd3;->y()Lpd3;

    move-result-object v0

    invoke-virtual {v0}, Lpd3;->E()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lmd3;->z()Lk53;

    move-result-object v1

    invoke-virtual {v1}, Lk53;->d()[B

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lmd3;->A()Lk53;

    move-result-object v2

    invoke-virtual {v2}, Lk53;->d()[B

    move-result-object v2

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "pcbc"

    const-string v6, "pcam.jar"

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lbs2;->b:Ljava/io/File;

    invoke-static {v3}, Lc50;->S3(Ljava/io/File;)Z

    .line 6
    iget-object v3, p0, Lbs2;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 7
    iget-object v3, p0, Lbs2;->b:Ljava/io/File;

    invoke-static {v0, v3}, Lc50;->B1(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 9
    iget-object v3, p0, Lbs2;->b:Ljava/io/File;

    invoke-static {v0, v6, v3}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 10
    array-length v7, v1

    if-lez v7, :cond_1

    .line 11
    invoke-static {v3, v1}, Lc50;->x2(Ljava/io/File;[B)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lbs2;->b:Ljava/io/File;

    .line 13
    invoke-static {v0, v5, v1}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 14
    invoke-static {v0, v2}, Lc50;->x2(Ljava/io/File;[B)Z

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return v4

    .line 15
    :cond_3
    invoke-virtual {p1}, Lmd3;->y()Lpd3;

    move-result-object v0

    invoke-virtual {v0}, Lpd3;->E()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbs2;->b:Ljava/io/File;

    invoke-static {v0, v6, v1}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 17
    :try_start_0
    iget-object p2, p2, Ltp2;->a:Loq2;

    invoke-virtual {p2, v0}, Loq2;->a(Ljava/io/File;)Z

    move-result p2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_4

    return v4

    .line 18
    :cond_4
    invoke-virtual {p1}, Lmd3;->y()Lpd3;

    move-result-object p2

    invoke-virtual {p2}, Lpd3;->E()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Lbs2;->b:Ljava/io/File;

    invoke-static {p2, v6, v0}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 21
    iget-object v2, p0, Lbs2;->b:Ljava/io/File;

    invoke-static {p2, v5, v2}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 22
    invoke-virtual {p0}, Lbs2;->b()Ljava/io/File;

    move-result-object v3

    invoke-static {p2, v6, v3}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 23
    invoke-virtual {p0}, Lbs2;->b()Ljava/io/File;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_d

    .line 26
    invoke-static {}, Lpd3;->J()Lpd3$a;

    move-result-object p2

    .line 27
    invoke-virtual {p1}, Lmd3;->y()Lpd3;

    move-result-object v0

    invoke-virtual {v0}, Lpd3;->E()Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-boolean v2, p2, Ls63$b;->g:Z

    if-eqz v2, :cond_7

    .line 29
    invoke-virtual {p2}, Ls63$b;->o()V

    .line 30
    iput-boolean v4, p2, Ls63$b;->g:Z

    .line 31
    :cond_7
    iget-object v2, p2, Ls63$b;->f:Ls63;

    check-cast v2, Lpd3;

    invoke-static {v2, v0}, Lpd3;->y(Lpd3;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lmd3;->y()Lpd3;

    move-result-object v0

    invoke-virtual {v0}, Lpd3;->F()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-boolean v2, p2, Ls63$b;->g:Z

    if-eqz v2, :cond_8

    .line 34
    invoke-virtual {p2}, Ls63$b;->o()V

    .line 35
    iput-boolean v4, p2, Ls63$b;->g:Z

    .line 36
    :cond_8
    iget-object v2, p2, Ls63$b;->f:Ls63;

    check-cast v2, Lpd3;

    invoke-static {v2, v0}, Lpd3;->B(Lpd3;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lmd3;->y()Lpd3;

    move-result-object v0

    invoke-virtual {v0}, Lpd3;->H()J

    move-result-wide v2

    .line 38
    iget-boolean v0, p2, Ls63$b;->g:Z

    if-eqz v0, :cond_9

    .line 39
    invoke-virtual {p2}, Ls63$b;->o()V

    .line 40
    iput-boolean v4, p2, Ls63$b;->g:Z

    .line 41
    :cond_9
    iget-object v0, p2, Ls63$b;->f:Ls63;

    check-cast v0, Lpd3;

    invoke-static {v0, v2, v3}, Lpd3;->A(Lpd3;J)V

    .line 42
    invoke-virtual {p1}, Lmd3;->y()Lpd3;

    move-result-object v0

    invoke-virtual {v0}, Lpd3;->I()J

    move-result-wide v2

    .line 43
    iget-boolean v0, p2, Ls63$b;->g:Z

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {p2}, Ls63$b;->o()V

    .line 45
    iput-boolean v4, p2, Ls63$b;->g:Z

    .line 46
    :cond_a
    iget-object v0, p2, Ls63$b;->f:Ls63;

    check-cast v0, Lpd3;

    invoke-static {v0, v2, v3}, Lpd3;->D(Lpd3;J)V

    .line 47
    invoke-virtual {p1}, Lmd3;->y()Lpd3;

    move-result-object p1

    invoke-virtual {p1}, Lpd3;->G()J

    move-result-wide v2

    .line 48
    iget-boolean p1, p2, Ls63$b;->g:Z

    if-eqz p1, :cond_b

    .line 49
    invoke-virtual {p2}, Ls63$b;->o()V

    .line 50
    iput-boolean v4, p2, Ls63$b;->g:Z

    .line 51
    :cond_b
    iget-object p1, p2, Ls63$b;->f:Ls63;

    check-cast p1, Lpd3;

    invoke-static {p1, v2, v3}, Lpd3;->x(Lpd3;J)V

    .line 52
    invoke-virtual {p2}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lpd3;

    .line 53
    invoke-virtual {p0, v1}, Lbs2;->e(I)Lpd3;

    move-result-object p2

    .line 54
    iget-object v0, p0, Lbs2;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p2, :cond_c

    .line 55
    invoke-virtual {p1}, Lpd3;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lpd3;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 56
    invoke-virtual {p0}, Lbs2;->c()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p2}, Lb53;->f()Lk53;

    move-result-object p2

    invoke-virtual {p2}, Lk53;->d()[B

    move-result-object p2

    invoke-static {p2}, Le20;->a([B)Ljava/lang/String;

    move-result-object p2

    .line 58
    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    :cond_c
    invoke-virtual {p0}, Lbs2;->d()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-virtual {p1}, Lb53;->f()Lk53;

    move-result-object p1

    invoke-virtual {p1}, Lk53;->d()[B

    move-result-object p1

    invoke-static {p1}, Le20;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    .line 63
    :goto_4
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 64
    invoke-virtual {p0, v1}, Lbs2;->e(I)Lpd3;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 65
    invoke-virtual {v0}, Lpd3;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v0, 0x2

    .line 66
    invoke-virtual {p0, v0}, Lbs2;->e(I)Lpd3;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 67
    invoke-virtual {v0}, Lpd3;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_f
    invoke-virtual {p0}, Lbs2;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 69
    array-length v1, v0

    :goto_5
    if-ge v4, v1, :cond_11

    aget-object v2, v0, v4

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 72
    invoke-virtual {p0}, Lbs2;->b()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lc50;->B1(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 73
    invoke-static {v2}, Lc50;->S3(Ljava/io/File;)Z

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_11
    return p1
.end method

.method public final b()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbs2;->a:Ljava/io/File;

    iget-object v2, p0, Lbs2;->d:Lkd3;

    .line 2
    iget v2, v2, Lkd3;->e:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lbs2;->d:Lkd3;

    .line 2
    iget v0, v0, Lkd3;->e:I

    const/16 v1, 0x11

    const-string v2, "FBAMTD"

    .line 3
    invoke-static {v1, v2, v0}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lbs2;->d:Lkd3;

    .line 2
    iget v0, v0, Lkd3;->e:I

    const/16 v1, 0x11

    const-string v2, "LATMTD"

    .line 3
    invoke-static {v1, v2, v0}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Lpd3;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lbs2;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lbs2;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 2
    iget-object p1, p0, Lbs2;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lbs2;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 4
    :cond_2
    :try_start_0
    invoke-static {p1}, Le20;->c(Ljava/lang/String;)[B

    move-result-object p1

    .line 5
    sget-object v2, Lk53;->f:Lk53;

    .line 6
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lk53;->M([BII)Lk53;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lpd3;->M(Lk53;)Lpd3;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lpd3;->E()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pcam.jar"

    .line 9
    invoke-virtual {p0}, Lbs2;->b()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v4, "pcam"

    .line 11
    invoke-virtual {p0}, Lbs2;->b()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    :cond_3
    const-string v5, "pcbc"

    .line 12
    invoke-virtual {p0}, Lbs2;->b()Ljava/io/File;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 13
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Le73; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    return-object p1

    :catch_0
    :cond_5
    return-object v1
.end method
