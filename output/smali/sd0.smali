.class public final synthetic Lsd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lrd0;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrd0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsd0;->e:Lrd0;

    iput-object p2, p0, Lsd0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lsd0;->e:Lrd0;

    iget-object v1, p0, Lsd0;->f:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lrd0;->e:Lxw0;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, v1, v2, v3}, Lxw0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
