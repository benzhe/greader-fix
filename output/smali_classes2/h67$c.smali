.class public Lh67$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh67;->d(Lc87$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lc87$a;


# direct methods
.method public constructor <init>(Lh67;Lc87$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lh67$c;->e:Lc87$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh67$c;->e:Lc87$a;

    invoke-interface {v0}, Lc87$a;->c()V

    return-void
.end method
