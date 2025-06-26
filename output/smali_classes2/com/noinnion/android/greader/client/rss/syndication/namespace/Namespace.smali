.class public abstract Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NSTAG:Ljava/lang/String;

.field public static final NSURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleElementEnd(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;)V
.end method

.method public abstract handleElementStart(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;Lorg/xml/sax/Attributes;)Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;
.end method
