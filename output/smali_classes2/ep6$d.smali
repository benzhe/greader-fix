.class public Lep6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrn6$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lep6;->W(Ljava/lang/String;JZI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Lcw6;

.field public final synthetic e:Lep6;


# direct methods
.method public constructor <init>(Lep6;Ljava/lang/String;IJLcw6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lep6$d;->e:Lep6;

    iput-object p2, p0, Lep6$d;->a:Ljava/lang/String;

    iput p3, p0, Lep6$d;->b:I

    iput-wide p4, p0, Lep6$d;->c:J

    iput-object p6, p0, Lep6$d;->d:Lcw6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lap6;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lep6$d;->e:Lep6;

    invoke-virtual {v0}, Lep6;->n()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    const/4 v6, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Lep6$d;->e:Lep6;

    iget-wide v3, p0, Lep6$d;->c:J

    iget-object v5, p0, Lep6$d;->d:Lcw6;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lep6;->L(Ljava/util/List;JLcw6;I)V

    return-void
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lep6$d;->e:Lep6;

    .line 2
    iget-object v0, v0, Lep6;->a:Landroid/content/Context;

    invoke-static {v0}, Liw6;->z(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lep6$d;->b:I

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public stream()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lep6$d;->a:Ljava/lang/String;

    return-object v0
.end method
