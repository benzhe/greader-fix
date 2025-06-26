.class public Lj67$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj67$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lj67$d;


# direct methods
.method public constructor <init>(Lj67$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj67$d$a;->e:Lj67$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj67$d$a;->e:Lj67$d;

    iget-object v0, v0, Lj67$d;->f:Lj67;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lj67;->r:Z

    return-void
.end method
