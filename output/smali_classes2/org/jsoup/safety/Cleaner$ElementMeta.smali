.class public Lorg/jsoup/safety/Cleaner$ElementMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElementMeta"
.end annotation


# instance fields
.field public el:Lorg/jsoup/nodes/Element;

.field public numAttribsDiscarded:I


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$ElementMeta;->el:Lorg/jsoup/nodes/Element;

    .line 3
    iput p2, p0, Lorg/jsoup/safety/Cleaner$ElementMeta;->numAttribsDiscarded:I

    return-void
.end method
