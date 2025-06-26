.class public Lfw6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfw6$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lfw6$b;Lfw6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lfw6$b;->a:Z

    iput-boolean p2, p0, Lfw6;->a:Z

    .line 3
    iget-boolean p2, p1, Lfw6$b;->b:Z

    iput-boolean p2, p0, Lfw6;->b:Z

    .line 4
    iget-boolean p2, p1, Lfw6$b;->c:Z

    iput-boolean p2, p0, Lfw6;->c:Z

    .line 5
    iget-boolean p2, p1, Lfw6$b;->d:Z

    iput-boolean p2, p0, Lfw6;->d:Z

    .line 6
    iget-boolean p1, p1, Lfw6$b;->e:Z

    iput-boolean p1, p0, Lfw6;->e:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lfw6;
    .locals 4

    .line 1
    new-instance v0, Lfw6$b;

    invoke-direct {v0}, Lfw6$b;-><init>()V

    const-string v1, "offline_load_full_content"

    const/4 v2, 0x1

    .line 2
    invoke-static {p0, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 3
    iput-boolean v1, v0, Lfw6$b;->a:Z

    const-string v1, "offline_load_images"

    const/4 v3, 0x0

    .line 4
    invoke-static {p0, v1, v3}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 5
    iput-boolean v1, v0, Lfw6$b;->b:Z

    const-string v1, "offline_load_audio"

    .line 6
    invoke-static {p0, v1, v3}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 7
    iput-boolean v1, v0, Lfw6$b;->c:Z

    const-string v1, "offline_load_video"

    .line 8
    invoke-static {p0, v1, v3}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 9
    iput-boolean v1, v0, Lfw6$b;->d:Z

    const-string v1, "offline_save_data_traffic"

    .line 10
    invoke-static {p0, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 11
    iput-boolean p0, v0, Lfw6$b;->e:Z

    .line 12
    new-instance p0, Lfw6;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lfw6;-><init>(Lfw6$b;Lfw6$a;)V

    return-object p0
.end method
