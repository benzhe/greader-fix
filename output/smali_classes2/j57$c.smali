.class public Lj57$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj57;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lj57;


# direct methods
.method public constructor <init>(Lj57;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj57$c;->e:Lj57;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj57$c;->e:Lj57;

    .line 2
    iget-object v0, v0, Lj57;->f:Ld87;

    .line 3
    invoke-virtual {v0}, Ld87;->f()V

    return-void
.end method
