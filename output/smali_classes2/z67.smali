.class public Lz67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:La67$a;

.field public final synthetic f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(La67$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz67;->e:La67$a;

    iput-object p2, p0, Lz67;->f:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz67;->e:La67$a;

    iget-object v1, p0, Lz67;->f:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, La67$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
