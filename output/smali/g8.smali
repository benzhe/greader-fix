.class public Lg8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln8;

.field public static final b:Lk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk4<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ll8;

    invoke-direct {v0}, Ll8;-><init>()V

    sput-object v0, Lg8;->a:Ln8;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Lk8;

    invoke-direct {v0}, Lk8;-><init>()V

    sput-object v0, Lg8;->a:Ln8;

    goto :goto_1

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 4
    new-instance v0, Lj8;

    invoke-direct {v0}, Lj8;-><init>()V

    sput-object v0, Lg8;->a:Ln8;

    goto :goto_1

    :cond_2
    const/16 v1, 0x18

    if-lt v0, v1, :cond_5

    .line 5
    sget-object v0, Li8;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    const-string v1, "TypefaceCompatApi24Impl"

    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 7
    new-instance v0, Li8;

    invoke-direct {v0}, Li8;-><init>()V

    sput-object v0, Lg8;->a:Ln8;

    goto :goto_1

    .line 8
    :cond_5
    new-instance v0, Lh8;

    invoke-direct {v0}, Lh8;-><init>()V

    sput-object v0, Lg8;->a:Ln8;

    .line 9
    :goto_1
    new-instance v0, Lk4;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lk4;-><init>(I)V

    sput-object v0, Lg8;->b:Lk4;

    return-void
.end method

.method public static a(Landroid/content/Context;Lw7;Landroid/content/res/Resources;IILb8;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 4

    .line 1
    instance-of v0, p1, Lz7;

    if-eqz v0, :cond_c

    .line 2
    check-cast p1, Lz7;

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    .line 3
    iget v1, p1, Lz7;->c:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eqz p7, :cond_2

    .line 4
    iget p7, p1, Lz7;->b:I

    goto :goto_1

    :cond_2
    const/4 p7, -0x1

    .line 5
    :goto_1
    iget-object p1, p1, Lz7;->a:Lf9;

    .line 6
    sget-object v2, Lj9;->a:Lk4;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v3, p1, Lf9;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    sget-object v3, Lj9;->a:Lk4;

    invoke-virtual {v3, v2}, Lk4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_3

    if-eqz p5, :cond_e

    .line 11
    invoke-virtual {p5, v3}, Lb8;->d(Landroid/graphics/Typeface;)V

    goto/16 :goto_4

    :cond_3
    if-eqz v0, :cond_6

    if-ne p7, v1, :cond_6

    .line 12
    invoke-static {p0, p1, p4}, Lj9;->b(Landroid/content/Context;Lf9;I)Lj9$d;

    move-result-object p0

    if-eqz p5, :cond_5

    .line 13
    iget p1, p0, Lj9$d;->b:I

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lj9$d;->a:Landroid/graphics/Typeface;

    invoke-virtual {p5, p1, p6}, Lb8;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p5, p1, p6}, Lb8;->a(ILandroid/os/Handler;)V

    .line 16
    :cond_5
    :goto_2
    iget-object v3, p0, Lj9$d;->a:Landroid/graphics/Typeface;

    goto/16 :goto_4

    .line 17
    :cond_6
    new-instance v1, Lg9;

    invoke-direct {v1, p0, p1, p4, v2}, Lg9;-><init>(Landroid/content/Context;Lf9;ILjava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 18
    :try_start_0
    sget-object p0, Lj9;->b:Lk9;

    invoke-virtual {p0, v1, p7}, Lk9;->b(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj9$d;

    iget-object v3, p0, Lj9$d;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    :cond_7
    if-nez p5, :cond_8

    move-object p0, v3

    goto :goto_3

    .line 19
    :cond_8
    new-instance p0, Lh9;

    invoke-direct {p0, p5, p6}, Lh9;-><init>(Lb8;Landroid/os/Handler;)V

    .line 20
    :goto_3
    sget-object p7, Lj9;->c:Ljava/lang/Object;

    monitor-enter p7

    .line 21
    :try_start_1
    sget-object p1, Lj9;->d:Lm4;

    .line 22
    invoke-virtual {p1, v2, v3}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 23
    check-cast p5, Ljava/util/ArrayList;

    if-eqz p5, :cond_a

    if-eqz p0, :cond_9

    .line 24
    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_9
    monitor-exit p7

    goto :goto_4

    :cond_a
    if-eqz p0, :cond_b

    .line 26
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p1, v2, p5}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_b
    monitor-exit p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    sget-object p0, Lj9;->b:Lk9;

    new-instance p1, Li9;

    invoke-direct {p1, v2}, Li9;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    .line 33
    new-instance p6, Ll9;

    invoke-direct {p6, p0, v1, p5, p1}, Ll9;-><init>(Lk9;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lk9$c;)V

    invoke-virtual {p0, p6}, Lk9;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 34
    :try_start_2
    monitor-exit p7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 35
    :cond_c
    sget-object p7, Lg8;->a:Ln8;

    check-cast p1, Lx7;

    invoke-virtual {p7, p0, p1, p2, p4}, Ln8;->a(Landroid/content/Context;Lx7;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz p5, :cond_e

    if-eqz v3, :cond_d

    .line 36
    invoke-virtual {p5, v3, p6}, Lb8;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_4

    :cond_d
    const/4 p0, -0x3

    .line 37
    invoke-virtual {p5, p0, p6}, Lb8;->a(ILandroid/os/Handler;)V

    :cond_e
    :goto_4
    if-eqz v3, :cond_f

    .line 38
    sget-object p0, Lg8;->b:Lk4;

    invoke-static {p2, p3, p4}, Lg8;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lk4;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object v3
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    .line 1
    sget-object v0, Lg8;->a:Ln8;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ln8;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1, p2, p4}, Lg8;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, Lg8;->b:Lk4;

    invoke-virtual {p2, p1, p0}, Lk4;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
