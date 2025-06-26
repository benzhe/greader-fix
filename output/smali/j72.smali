.class public final synthetic Lj72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lf72;


# direct methods
.method public constructor <init>(Lf72;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj72;->e:Lf72;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj72;->e:Lf72;

    .line 2
    iget-object v0, v0, Lf72;->c:Le72;

    .line 3
    iget-object v0, v0, Le72;->d:Ly62;

    .line 4
    iget-object v0, v0, Ly62;->b:Lw52;

    .line 5
    invoke-virtual {v0}, Lw52;->onAdLoaded()V

    return-void
.end method
