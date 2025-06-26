.class public final synthetic Lz26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lf45;


# direct methods
.method public constructor <init>(Lf45;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz26;->e:Lf45;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lz26;->e:Lf45;

    .line 1
    iget-object v0, v0, Lf45;->a:Le55;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le55;->s(Ljava/lang/Object;)V

    return-object v1
.end method
