.class public final synthetic Lv96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ly96;


# direct methods
.method public constructor <init>(Ly96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv96;->e:Ly96;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lv96;->e:Ly96;

    .line 1
    sget-object v1, Ly96;->m:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ly96;->b(Z)V

    return-void
.end method
