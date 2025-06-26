.class public final Lss7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lss7;->a:Landroid/app/Activity;

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getSupportActionBar"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lss7;->c:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    iget-object p1, p0, Lss7;->a:Landroid/app/Activity;

    .line 7
    new-instance v0, Lts7$a;

    invoke-direct {v0, p1}, Lts7$a;-><init>(Landroid/app/Activity;)V

    .line 8
    iput-object v0, p0, Lss7;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lss7;->c:Z

    .line 2
    iget-object v0, p0, Lss7;->b:Ljava/lang/Object;

    iget-object v1, p0, Lss7;->a:Landroid/app/Activity;

    .line 3
    check-cast v0, Lts7$a;

    .line 4
    iget-object v2, v0, Lts7$a;->a:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lts7$a;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, v0, Lts7$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, v0, Lts7$a;->c:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
