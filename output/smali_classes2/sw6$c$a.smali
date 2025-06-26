.class public Lsw6$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsw6$c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lsw6$c;


# direct methods
.method public constructor <init>(Lsw6$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsw6$c$a;->e:Lsw6$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsw6$c$a;->e:Lsw6$c;

    iget-object v0, v0, Lsw6$c;->b:Lsw6;

    invoke-static {v0}, Lsw6;->d(Lsw6;)V

    return-void
.end method
