.class public final Ldo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ldn;


# direct methods
.method public constructor <init>(Ldn;)V
    .locals 0

    iput-object p1, p0, Ldo;->e:Ldn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldo;->e:Ldn;

    .line 1
    sget-object v1, Lun;->m:Lin;

    invoke-interface {v0, v1}, Ldn;->a(Lin;)V

    return-void
.end method
