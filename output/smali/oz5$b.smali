.class public Loz5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li06$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loz5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loz5;


# direct methods
.method public constructor <init>(Loz5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loz5$b;->a:Loz5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Loz5$b;->a:Loz5;

    iget-object v0, v0, Loz5;->d:Llz5;

    .line 2
    iget-object v1, v0, Llz5;->n:Lj96;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Llz5;->o:Luy5;

    if-eqz v0, :cond_0

    const-string v0, "Impression timer onFinish for: "

    .line 4
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loz5$b;->a:Loz5;

    iget-object v1, v1, Loz5;->d:Llz5;

    .line 5
    iget-object v1, v1, Llz5;->n:Lj96;

    .line 6
    iget-object v1, v1, Lj96;->b:Lf96;

    .line 7
    iget-object v1, v1, Lf96;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lc50;->w0(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Loz5$b;->a:Loz5;

    iget-object v0, v0, Loz5;->d:Llz5;

    .line 11
    iget-object v0, v0, Llz5;->o:Luy5;

    .line 12
    check-cast v0, Lj36;

    invoke-virtual {v0}, Lj36;->a()Le45;

    :cond_0
    return-void
.end method
