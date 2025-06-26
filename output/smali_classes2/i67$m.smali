.class public Li67$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li67;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Li67;


# direct methods
.method public constructor <init>(Li67;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li67$m;->e:Li67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Li67$m;->e:Li67;

    .line 2
    iget-object v0, v0, Li67;->c:Ly57;

    .line 3
    invoke-interface {v0}, Ly57;->i()V

    return-void
.end method
